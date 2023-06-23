package com.genonbeta.TrebleShot.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.github.kevinsawicki.http.HttpRequest;
import com.kd.speedshare.R;
import fi.iki.elonen.NanoHTTPD;
import java.util.HashMap;

public class MimeIconUtils {
    private static HashMap<String, Integer> sMimeIcons = new HashMap<>();

    static {
        add("application/vnd.android.package-archive", R.drawable.ic_android_head_white_24dp);
        add("application/ogg", R.drawable.ic_music_box_white_24dp);
        add("application/x-flac", R.drawable.ic_music_box_white_24dp);
        add("application/pgp-keys", R.drawable.ic_certificate_white_24dp);
        add("application/pgp-signature", R.drawable.ic_certificate_white_24dp);
        add("application/x-pkcs12", R.drawable.ic_certificate_white_24dp);
        add("application/x-pkcs7-certreqresp", R.drawable.ic_certificate_white_24dp);
        add("application/x-pkcs7-crl", R.drawable.ic_certificate_white_24dp);
        add("application/x-x509-ca-cert", R.drawable.ic_certificate_white_24dp);
        add("application/x-x509-user-cert", R.drawable.ic_certificate_white_24dp);
        add("application/x-pkcs7-certificates", R.drawable.ic_certificate_white_24dp);
        add("application/x-pkcs7-mime", R.drawable.ic_certificate_white_24dp);
        add("application/x-pkcs7-signature", R.drawable.ic_certificate_white_24dp);
        add("application/rdf+xml", R.drawable.ic_code_tags_white_24dp);
        add("application/rss+xml", R.drawable.ic_code_tags_white_24dp);
        add("application/x-object", R.drawable.ic_code_tags_white_24dp);
        add("application/xhtml+xml", R.drawable.ic_code_tags_white_24dp);
        add("text/css", R.drawable.ic_code_tags_white_24dp);
        add(NanoHTTPD.MIME_HTML, R.drawable.ic_code_tags_white_24dp);
        add("text/xml", R.drawable.ic_code_tags_white_24dp);
        add("text/x-c++hdr", R.drawable.ic_code_tags_white_24dp);
        add("text/x-c++src", R.drawable.ic_code_tags_white_24dp);
        add("text/x-chdr", R.drawable.ic_code_tags_white_24dp);
        add("text/x-csrc", R.drawable.ic_code_tags_white_24dp);
        add("text/x-dsrc", R.drawable.ic_code_tags_white_24dp);
        add("text/x-csh", R.drawable.ic_code_tags_white_24dp);
        add("text/x-haskell", R.drawable.ic_code_tags_white_24dp);
        add("text/x-java", R.drawable.ic_code_tags_white_24dp);
        add("text/x-literate-haskell", R.drawable.ic_code_tags_white_24dp);
        add("text/x-pascal", R.drawable.ic_code_tags_white_24dp);
        add("text/x-tcl", R.drawable.ic_code_tags_white_24dp);
        add("text/x-tex", R.drawable.ic_code_tags_white_24dp);
        add("application/x-latex", R.drawable.ic_code_tags_white_24dp);
        add("application/x-texinfo", R.drawable.ic_code_tags_white_24dp);
        add("application/atom+xml", R.drawable.ic_code_tags_white_24dp);
        add("application/ecmascript", R.drawable.ic_code_tags_white_24dp);
        add(HttpRequest.CONTENT_TYPE_JSON, R.drawable.ic_code_tags_white_24dp);
        add("application/javascript", R.drawable.ic_code_tags_white_24dp);
        add("application/xml", R.drawable.ic_code_tags_white_24dp);
        add("text/javascript", R.drawable.ic_code_tags_white_24dp);
        add("application/x-javascript", R.drawable.ic_code_tags_white_24dp);
        add("application/mac-binhex40", R.drawable.ic_zip_box_white_24dp);
        add("application/rar", R.drawable.ic_zip_box_white_24dp);
        add("application/zip", R.drawable.ic_zip_box_white_24dp);
        add("application/x-apple-diskimage", R.drawable.ic_zip_box_white_24dp);
        add("application/x-debian-package", R.drawable.ic_zip_box_white_24dp);
        add("application/x-gtar", R.drawable.ic_zip_box_white_24dp);
        add("application/x-iso9660-image", R.drawable.ic_zip_box_white_24dp);
        add("application/x-lha", R.drawable.ic_zip_box_white_24dp);
        add("application/x-lzh", R.drawable.ic_zip_box_white_24dp);
        add("application/x-lzx", R.drawable.ic_zip_box_white_24dp);
        add("application/x-stuffit", R.drawable.ic_zip_box_white_24dp);
        add("application/x-tar", R.drawable.ic_zip_box_white_24dp);
        add("application/x-webarchive", R.drawable.ic_zip_box_white_24dp);
        add("application/x-webarchive-xml", R.drawable.ic_zip_box_white_24dp);
        add("application/gzip", R.drawable.ic_zip_box_white_24dp);
        add("application/x-7z-compressed", R.drawable.ic_zip_box_white_24dp);
        add("application/x-deb", R.drawable.ic_zip_box_white_24dp);
        add("application/x-rar-compressed", R.drawable.ic_zip_box_white_24dp);
        add("text/x-vcard", R.drawable.ic_account_box_white_24dp);
        add("text/vcard", R.drawable.ic_account_box_white_24dp);
        add("text/calendar", R.drawable.ic_calendar_white_24dp);
        add("text/x-vcalendar", R.drawable.ic_calendar_white_24dp);
        add("application/x-font", R.drawable.ic_file_font_white_24dp);
        add("application/font-woff", R.drawable.ic_file_font_white_24dp);
        add("application/x-font-woff", R.drawable.ic_file_font_white_24dp);
        add("application/x-font-ttf", R.drawable.ic_file_font_white_24dp);
        add("application/vnd.oasis.opendocument.graphics", R.drawable.ic_photo_white_24dp);
        add("application/vnd.oasis.opendocument.graphics-template", R.drawable.ic_photo_white_24dp);
        add("application/vnd.oasis.opendocument.image", R.drawable.ic_photo_white_24dp);
        add("application/vnd.stardivision.draw", R.drawable.ic_photo_white_24dp);
        add("application/vnd.sun.xml.draw", R.drawable.ic_photo_white_24dp);
        add("application/vnd.sun.xml.draw.template", R.drawable.ic_photo_white_24dp);
        add("application/pdf", R.drawable.ic_file_pdf_box_white_24dp);
        add("application/vnd.stardivision.impress", R.drawable.ic_file_presentation_box_white_24dp);
        add("application/vnd.sun.xml.impress", R.drawable.ic_file_presentation_box_white_24dp);
        add("application/vnd.sun.xml.impress.template", R.drawable.ic_file_presentation_box_white_24dp);
        add("application/x-kpresenter", R.drawable.ic_file_presentation_box_white_24dp);
        add("application/vnd.oasis.opendocument.presentation", R.drawable.ic_file_presentation_box_white_24dp);
        add("application/vnd.oasis.opendocument.spreadsheet", R.drawable.ic_google_spreadsheet_white_24dp);
        add("application/vnd.oasis.opendocument.spreadsheet-template", R.drawable.ic_google_spreadsheet_white_24dp);
        add("application/vnd.stardivision.calc", R.drawable.ic_google_spreadsheet_white_24dp);
        add("application/vnd.sun.xml.calc", R.drawable.ic_google_spreadsheet_white_24dp);
        add("application/vnd.sun.xml.calc.template", R.drawable.ic_google_spreadsheet_white_24dp);
        add("application/x-kspread", R.drawable.ic_google_spreadsheet_white_24dp);
        add("application/vnd.oasis.opendocument.text", R.drawable.ic_file_document_box_white_24dp);
        add("application/vnd.oasis.opendocument.text-master", R.drawable.ic_file_document_box_white_24dp);
        add("application/vnd.oasis.opendocument.text-template", R.drawable.ic_file_document_box_white_24dp);
        add("application/vnd.oasis.opendocument.text-web", R.drawable.ic_file_document_box_white_24dp);
        add("application/vnd.stardivision.writer", R.drawable.ic_file_document_box_white_24dp);
        add("application/vnd.stardivision.writer-global", R.drawable.ic_file_document_box_white_24dp);
        add("application/vnd.sun.xml.writer", R.drawable.ic_file_document_box_white_24dp);
        add("application/vnd.sun.xml.writer.global", R.drawable.ic_file_document_box_white_24dp);
        add("application/vnd.sun.xml.writer.template", R.drawable.ic_file_document_box_white_24dp);
        add("application/x-abiword", R.drawable.ic_file_document_box_white_24dp);
        add("application/x-kword", R.drawable.ic_file_document_box_white_24dp);
        add("application/x-quicktimeplayer", R.drawable.ic_video_white_24dp);
        add("application/x-shockwave-flash", R.drawable.ic_video_white_24dp);
        add("application/msword", R.drawable.ic_file_word_box_white_24dp);
        add("application/vnd.openxmlformats-officedocument.wordprocessingml.document", R.drawable.ic_file_word_box_white_24dp);
        add("application/vnd.openxmlformats-officedocument.wordprocessingml.template", R.drawable.ic_file_word_box_white_24dp);
        add("application/vnd.ms-excel", R.drawable.ic_file_excel_box_white_24dp);
        add("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", R.drawable.ic_file_excel_box_white_24dp);
        add("application/vnd.openxmlformats-officedocument.spreadsheetml.template", R.drawable.ic_file_excel_box_white_24dp);
        add("application/vnd.ms-powerpoint", R.drawable.ic_file_powerpoint_box_24dp);
        add("application/vnd.openxmlformats-officedocument.presentationml.presentation", R.drawable.ic_file_powerpoint_box_24dp);
        add("application/vnd.openxmlformats-officedocument.presentationml.template", R.drawable.ic_file_powerpoint_box_24dp);
        add("application/vnd.openxmlformats-officedocument.presentationml.slideshow", R.drawable.ic_file_powerpoint_box_24dp);
    }

    private static void add(String str, int i) {
        if (sMimeIcons.put(str, Integer.valueOf(i)) != null) {
            throw new RuntimeException(str + " already registered!");
        }
    }

    public static Drawable loadMimeIcon(Context context, String str) {
        return ContextCompat.getDrawable(context, loadMimeIcon(str));
    }

    public static int loadMimeIcon(String str) {
        if ("vnd.android.document/directory".equals(str)) {
            return R.drawable.ic_folder_white_24dp;
        }
        Integer num = sMimeIcons.get(str);
        if (num != null) {
            return num.intValue();
        }
        if (str == null) {
            return R.drawable.ic_insert_drive_file_white_24dp;
        }
        String str2 = str.split("/")[0];
        if ("audio".equals(str2)) {
            return R.drawable.ic_music_box_white_24dp;
        }
        if ("image".equals(str2)) {
            return R.drawable.ic_photo_white_24dp;
        }
        if (AccessDatabase.FIELD_CLIPBOARD_TEXT.equals(str2)) {
            return R.drawable.ic_file_document_box_white_24dp;
        }
        if ("video".equals(str2)) {
            return R.drawable.ic_video_white_24dp;
        }
        return R.drawable.ic_insert_drive_file_white_24dp;
    }
}
