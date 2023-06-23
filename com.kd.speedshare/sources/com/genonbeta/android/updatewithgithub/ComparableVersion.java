package com.genonbeta.android.updatewithgithub;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Properties;
import java.util.Stack;

public class ComparableVersion implements Comparable<ComparableVersion> {
    private String canonical;
    private ListItem items;
    private String value;

    private interface Item {
        public static final int INTEGER_ITEM = 0;
        public static final int LIST_ITEM = 2;
        public static final int STRING_ITEM = 1;

        int compareTo(Item item);

        int getType();

        boolean isNull();
    }

    private static class IntegerItem implements Item {
        private static final BigInteger BIG_INTEGER_ZERO = new BigInteger("0");
        public static final IntegerItem ZERO = new IntegerItem();
        private final BigInteger value;

        public int getType() {
            return 0;
        }

        private IntegerItem() {
            this.value = BIG_INTEGER_ZERO;
        }

        public IntegerItem(String str) {
            this.value = new BigInteger(str);
        }

        public boolean isNull() {
            return BIG_INTEGER_ZERO.equals(this.value);
        }

        public int compareTo(Item item) {
            if (item == null) {
                return BIG_INTEGER_ZERO.equals(this.value) ^ true ? 1 : 0;
            }
            int type = item.getType();
            if (type == 0) {
                return this.value.compareTo(((IntegerItem) item).value);
            }
            if (type == 1 || type == 2) {
                return 1;
            }
            throw new RuntimeException("invalid item: " + item.getClass());
        }

        public String toString() {
            return this.value.toString();
        }
    }

    private static class StringItem implements Item {
        private static final Properties ALIASES;
        private static final String[] QUALIFIERS;
        private static final String RELEASE_VERSION_INDEX = String.valueOf(_QUALIFIERS.indexOf(""));
        private static final List<String> _QUALIFIERS;
        private String value;

        public int getType() {
            return 1;
        }

        static {
            String[] strArr = {"alpha", "beta", "milestone", "rc", "snapshot", "", "sp"};
            QUALIFIERS = strArr;
            _QUALIFIERS = Arrays.asList(strArr);
            Properties properties = new Properties();
            ALIASES = properties;
            properties.put("ga", "");
            ALIASES.put("final", "");
            ALIASES.put("cr", "rc");
        }

        public StringItem(String str, boolean z) {
            if (z && str.length() == 1) {
                char charAt = str.charAt(0);
                if (charAt == 'a') {
                    str = "alpha";
                } else if (charAt == 'b') {
                    str = "beta";
                } else if (charAt == 'm') {
                    str = "milestone";
                }
            }
            this.value = ALIASES.getProperty(str, str);
        }

        public boolean isNull() {
            return comparableQualifier(this.value).compareTo(RELEASE_VERSION_INDEX) == 0;
        }

        public static String comparableQualifier(String str) {
            int indexOf = _QUALIFIERS.indexOf(str);
            if (indexOf != -1) {
                return String.valueOf(indexOf);
            }
            return _QUALIFIERS.size() + "-" + str;
        }

        public int compareTo(Item item) {
            if (item == null) {
                return comparableQualifier(this.value).compareTo(RELEASE_VERSION_INDEX);
            }
            int type = item.getType();
            if (type == 0) {
                return -1;
            }
            if (type == 1) {
                return comparableQualifier(this.value).compareTo(comparableQualifier(((StringItem) item).value));
            }
            if (type == 2) {
                return -1;
            }
            throw new RuntimeException("invalid item: " + item.getClass());
        }

        public String toString() {
            return this.value;
        }
    }

    private static class ListItem extends ArrayList<Item> implements Item {
        public int getType() {
            return 2;
        }

        private ListItem() {
        }

        public boolean isNull() {
            return size() == 0;
        }

        /* access modifiers changed from: package-private */
        public void normalize() {
            ListIterator listIterator = listIterator(size());
            while (listIterator.hasPrevious() && ((Item) listIterator.previous()).isNull()) {
                listIterator.remove();
            }
        }

        public int compareTo(Item item) {
            int i;
            if (item != null) {
                int type = item.getType();
                if (type == 0) {
                    return -1;
                }
                if (type == 1) {
                    return 1;
                }
                if (type == 2) {
                    Iterator it = iterator();
                    Iterator it2 = ((ListItem) item).iterator();
                    do {
                        if (!it.hasNext() && !it2.hasNext()) {
                            return 0;
                        }
                        Item item2 = it.hasNext() ? (Item) it.next() : null;
                        Item item3 = it2.hasNext() ? (Item) it2.next() : null;
                        if (item2 != null) {
                            i = item2.compareTo(item3);
                            continue;
                        } else if (item3 == null) {
                            i = 0;
                            continue;
                        } else {
                            i = item3.compareTo(item2) * -1;
                            continue;
                        }
                    } while (i == 0);
                    return i;
                }
                throw new RuntimeException("invalid item: " + item.getClass());
            } else if (size() == 0) {
                return 0;
            } else {
                return ((Item) get(0)).compareTo((Item) null);
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("(");
            Iterator it = iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                if (it.hasNext()) {
                    sb.append(',');
                }
            }
            sb.append(')');
            return sb.toString();
        }
    }

    public ComparableVersion(String str) {
        parseVersion(str);
    }

    public final void parseVersion(String str) {
        this.value = str;
        this.items = new ListItem();
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        ListItem listItem = this.items;
        Stack stack = new Stack();
        stack.push(listItem);
        int i = 0;
        boolean z = false;
        for (int i2 = 0; i2 < lowerCase.length(); i2++) {
            char charAt = lowerCase.charAt(i2);
            if (charAt == '.') {
                if (i2 == i) {
                    listItem.add(IntegerItem.ZERO);
                } else {
                    listItem.add(parseItem(z, lowerCase.substring(i, i2)));
                }
                i = i2 + 1;
            } else if (charAt == '-') {
                if (i2 == i) {
                    listItem.add(IntegerItem.ZERO);
                } else {
                    listItem.add(parseItem(z, lowerCase.substring(i, i2)));
                }
                i = i2 + 1;
                if (z) {
                    listItem.normalize();
                    if (i < lowerCase.length() && Character.isDigit(lowerCase.charAt(i))) {
                        ListItem listItem2 = new ListItem();
                        listItem.add(listItem2);
                        stack.push(listItem2);
                        listItem = listItem2;
                    }
                }
            } else if (Character.isDigit(charAt)) {
                if (!z && i2 > i) {
                    listItem.add(new StringItem(lowerCase.substring(i, i2), true));
                    i = i2;
                }
                z = true;
            } else {
                if (z && i2 > i) {
                    listItem.add(parseItem(true, lowerCase.substring(i, i2)));
                    i = i2;
                }
                z = false;
            }
        }
        if (lowerCase.length() > i) {
            listItem.add(parseItem(z, lowerCase.substring(i)));
        }
        while (!stack.isEmpty()) {
            ((ListItem) stack.pop()).normalize();
        }
        this.canonical = this.items.toString();
    }

    private static Item parseItem(boolean z, String str) {
        return z ? new IntegerItem(str) : new StringItem(str, false);
    }

    public int compareTo(ComparableVersion comparableVersion) {
        return this.items.compareTo(comparableVersion.items);
    }

    public String toString() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ComparableVersion) && this.canonical.equals(((ComparableVersion) obj).canonical);
    }

    public int hashCode() {
        return this.canonical.hashCode();
    }
}
