package com.google.firebase.installations.local;

import com.google.firebase.FirebaseApp;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class PersistedInstallation {
    private static final String AUTH_TOKEN_KEY = "AuthToken";
    private static final String EXPIRES_IN_SECONDS_KEY = "ExpiresInSecs";
    private static final String FIREBASE_INSTALLATION_ID_KEY = "Fid";
    private static final String FIS_ERROR_KEY = "FisError";
    private static final String PERSISTED_STATUS_KEY = "Status";
    private static final String REFRESH_TOKEN_KEY = "RefreshToken";
    private static final String SETTINGS_FILE_NAME_PREFIX = "PersistedInstallation";
    private static final String TOKEN_CREATION_TIME_IN_SECONDS_KEY = "TokenCreationEpochInSecs";
    private final File dataFile;
    private final FirebaseApp firebaseApp;

    public enum RegistrationStatus {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public PersistedInstallation(FirebaseApp firebaseApp2) {
        File filesDir = firebaseApp2.getApplicationContext().getFilesDir();
        this.dataFile = new File(filesDir, "PersistedInstallation." + firebaseApp2.getPersistenceKey() + ".json");
        this.firebaseApp = firebaseApp2;
    }

    public PersistedInstallationEntry readPersistedInstallationEntryValue() {
        JSONObject readJSONFromFile = readJSONFromFile();
        String optString = readJSONFromFile.optString(FIREBASE_INSTALLATION_ID_KEY, (String) null);
        int optInt = readJSONFromFile.optInt(PERSISTED_STATUS_KEY, RegistrationStatus.ATTEMPT_MIGRATION.ordinal());
        String optString2 = readJSONFromFile.optString(AUTH_TOKEN_KEY, (String) null);
        String optString3 = readJSONFromFile.optString(REFRESH_TOKEN_KEY, (String) null);
        long optLong = readJSONFromFile.optLong(TOKEN_CREATION_TIME_IN_SECONDS_KEY, 0);
        long optLong2 = readJSONFromFile.optLong(EXPIRES_IN_SECONDS_KEY, 0);
        return PersistedInstallationEntry.builder().setFirebaseInstallationId(optString).setRegistrationStatus(RegistrationStatus.values()[optInt]).setAuthToken(optString2).setRefreshToken(optString3).setTokenCreationEpochInSecs(optLong).setExpiresInSecs(optLong2).setFisError(readJSONFromFile.optString(FIS_ERROR_KEY, (String) null)).build();
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:16:0x002c */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private org.json.JSONObject readJSONFromFile() {
        /*
            r6 = this;
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            r1 = 16384(0x4000, float:2.2959E-41)
            byte[] r2 = new byte[r1]
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ IOException | JSONException -> 0x002d }
            java.io.File r4 = r6.dataFile     // Catch:{ IOException | JSONException -> 0x002d }
            r3.<init>(r4)     // Catch:{ IOException | JSONException -> 0x002d }
        L_0x0010:
            r4 = 0
            int r5 = r3.read(r2, r4, r1)     // Catch:{ all -> 0x0028 }
            if (r5 >= 0) goto L_0x0024
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch:{ all -> 0x0028 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0028 }
            r1.<init>((java.lang.String) r0)     // Catch:{ all -> 0x0028 }
            r3.close()     // Catch:{ IOException | JSONException -> 0x002d }
            return r1
        L_0x0024:
            r0.write(r2, r4, r5)     // Catch:{ all -> 0x0028 }
            goto L_0x0010
        L_0x0028:
            r0 = move-exception
            r3.close()     // Catch:{ all -> 0x002c }
        L_0x002c:
            throw r0     // Catch:{ IOException | JSONException -> 0x002d }
        L_0x002d:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.local.PersistedInstallation.readJSONFromFile():org.json.JSONObject");
    }

    public PersistedInstallationEntry insertOrUpdatePersistedInstallationEntry(PersistedInstallationEntry persistedInstallationEntry) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(FIREBASE_INSTALLATION_ID_KEY, (Object) persistedInstallationEntry.getFirebaseInstallationId());
            jSONObject.put(PERSISTED_STATUS_KEY, persistedInstallationEntry.getRegistrationStatus().ordinal());
            jSONObject.put(AUTH_TOKEN_KEY, (Object) persistedInstallationEntry.getAuthToken());
            jSONObject.put(REFRESH_TOKEN_KEY, (Object) persistedInstallationEntry.getRefreshToken());
            jSONObject.put(TOKEN_CREATION_TIME_IN_SECONDS_KEY, persistedInstallationEntry.getTokenCreationEpochInSecs());
            jSONObject.put(EXPIRES_IN_SECONDS_KEY, persistedInstallationEntry.getExpiresInSecs());
            jSONObject.put(FIS_ERROR_KEY, (Object) persistedInstallationEntry.getFisError());
            File createTempFile = File.createTempFile(SETTINGS_FILE_NAME_PREFIX, "tmp", this.firebaseApp.getApplicationContext().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (createTempFile.renameTo(this.dataFile)) {
                return persistedInstallationEntry;
            }
            throw new IOException("unable to rename the tmpfile to PersistedInstallation");
        } catch (IOException | JSONException unused) {
        }
    }

    public void clearForTesting() {
        this.dataFile.delete();
    }
}
