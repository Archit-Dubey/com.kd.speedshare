package com.genonbeta.TrebleShot.config;

public class Keyword {
    public static final String APP_INFO = "appInfo";
    public static final String APP_INFO_VERSION_CODE = "versionCode";
    public static final String APP_INFO_VERSION_NAME = "versionName";
    public static final String BACK_COMP_REQUEST_SEND_UPDATE = "backCompRequestSendUpdate";
    public static final String DEVICE_INFO = "deviceInfo";
    public static final String DEVICE_INFO_BRAND = "brand";
    public static final String DEVICE_INFO_MODEL = "model";
    public static final String DEVICE_INFO_PICTURE = "devicePicture";
    public static final String DEVICE_INFO_SERIAL = "deviceId";
    public static final String DEVICE_INFO_USER = "user";
    public static final String DEVICE_SECURE_KEY = "secureKey";
    public static final String ERROR = "error";
    public static final String ERROR_NOT_ACCESSIBLE = "notAccessible";
    public static final String ERROR_NOT_ALLOWED = "notAllowed";
    public static final String ERROR_NOT_FOUND = "notFound";
    public static final String ERROR_REQUIRE_TRUSTZONE = "errorRequireTrustZone";
    public static final String ERROR_UNKNOWN = "errorUnknown";
    public static final String FILES_INDEX = "filesIndex";
    public static final String FLAG = "flag";
    public static final String FLAG_GROUP_EXISTS = "flagGroupExists";
    public static final String FLAG_TRANSFER_QR_CONNECTION = "flagTransferQRConnection";
    public static final String HANDSHAKE_ONLY = "handshakeOnly";
    public static final String HANDSHAKE_REQUIRED = "handshakeRequired";
    public static final String INDEX_DIRECTORY = "directory";
    public static final String INDEX_FILE_MIME = "fileMime";
    public static final String INDEX_FILE_NAME = "file";
    public static final String INDEX_FILE_SIZE = "fileSize";
    public static final String NETWORK_ADDRESS_BSSID = "bsid";
    public static final String NETWORK_ADDRESS_IP = "ipAdr";
    public static final String NETWORK_KEYMGMT = "ntKeyMgmt";
    public static final String NETWORK_NAME = "nwName";
    public static final String NETWORK_PASSWORD = "nwPwd";
    public static final String NETWORK_PIN = "pin";
    public static final String REQUEST = "request";
    public static final String REQUEST_ACQUAINTANCE = "requestAcquaintance";
    public static final String REQUEST_CLIPBOARD = "requestClipboard";
    public static final String REQUEST_HANDSHAKE = "requestHandshake";
    public static final String REQUEST_RESPONSE = "requestResponse";
    public static final String REQUEST_START_TRANSFER = "requestStartTransfer";
    public static final String REQUEST_TRANSFER = "requestTransfer";
    public static final String RESULT = "result";
    public static final String SIZE_CHANGED = "sizeChanged";
    public static final String SKIPPED_BYTES = "skippedBytes";
    public static final String TRANSFER_CLIPBOARD_TEXT = "clipboardText";
    public static final String TRANSFER_DEVICE_ID = "deviceId";
    public static final String TRANSFER_GROUP_ID = "groupId";
    public static final String TRANSFER_IS_ACCEPTED = "isAccepted";
    public static final String TRANSFER_JOB_DONE = "jobDone";
    public static final String TRANSFER_REQUEST_ID = "requestId";
    public static final String TRANSFER_SOCKET_PORT = "socketPort";

    public enum Flavor {
        unknown,
        fossReliant,
        googlePlay
    }

    public static class Local {
        public static final String NETWORK_INTERFACE_UNKNOWN = "unk0";
        public static final String SETTINGS_VIEWING = "sorting_settings";
    }
}
