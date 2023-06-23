package com.genonbeta.android.updatewithgithub;

import com.github.kevinsawicki.http.HttpRequest;
import java.io.IOException;
import java.net.URLEncoder;

public class RemoteServer {
    private String mConnection;

    public RemoteServer(String str) {
        this.mConnection = str;
    }

    public String connect(String str, String str2) throws IOException {
        HttpRequest httpRequest = HttpRequest.get((CharSequence) this.mConnection);
        StringBuilder sb = new StringBuilder();
        httpRequest.readTimeout(5000);
        if (!(str == null || str2 == null)) {
            httpRequest.send((CharSequence) str + "=" + URLEncoder.encode(str2, "UTF-8"));
        }
        httpRequest.receive((Appendable) sb);
        return sb.toString();
    }

    public String getConnectionAddress() {
        return this.mConnection;
    }

    public void setConnection(String str) {
        this.mConnection = str;
    }
}
