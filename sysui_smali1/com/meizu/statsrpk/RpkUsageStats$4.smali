.class Lcom/meizu/statsrpk/RpkUsageStats$4;
.super Ljava/lang/Object;
.source "RpkUsageStats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsrpk/RpkUsageStats;->findRelativeApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsrpk/RpkUsageStats;

.field final synthetic val$rpkPkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/RpkUsageStats;Ljava/lang/String;)V
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    iput-object p2, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->val$rpkPkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$200(Lcom/meizu/statsrpk/RpkUsageStats;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "statsrpk_config_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->val$rpkPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsrpk/RpkUsageStats;->access$102(Lcom/meizu/statsrpk/RpkUsageStats;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 105
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v1}, Lcom/meizu/statsrpk/RpkUsageStats;->access$100(Lcom/meizu/statsrpk/RpkUsageStats;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    const-string v3, "appKey"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/statsrpk/RpkInfo;->appKey:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v1}, Lcom/meizu/statsrpk/RpkUsageStats;->access$100(Lcom/meizu/statsrpk/RpkUsageStats;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "apkPkgName"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/statsrpk/RpkInfo;->apkPkgName:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/statsrpk/RpkInfo;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/statsrpk/RpkInfo;->apkPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 109
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://uxip-res.meizu.com/resource/v3/config/rpk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v1}, Lcom/meizu/statsrpk/RpkUsageStats;->access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/meizu/statsrpk/RpkInfo;->rpkPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/meizu/statsrpk/RpkUsageStats;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RpkUsageStats try cdn url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 113
    :try_start_a6
    iget-object v2, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v2}, Lcom/meizu/statsrpk/RpkUsageStats;->access$200(Lcom/meizu/statsrpk/RpkUsageStats;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetRequester;->postNoGslb(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v1
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b4} :catch_c2
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_b4} :catch_b5

    goto :goto_ce

    :catch_b5
    move-exception v2

    .line 117
    invoke-static {}, Lcom/meizu/statsrpk/RpkUsageStats;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    :catch_c2
    move-exception v2

    .line 115
    invoke-static {}, Lcom/meizu/statsrpk/RpkUsageStats;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_ce
    invoke-static {}, Lcom/meizu/statsrpk/RpkUsageStats;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RpkUsageStats getConfigFromServer response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_139

    .line 120
    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_139

    .line 121
    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_139

    .line 123
    invoke-static {}, Lcom/meizu/statsrpk/RpkUsageStats;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RpkUsageStats successfully posted to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_10e
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$200(Lcom/meizu/statsrpk/RpkUsageStats;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v2}, Lcom/meizu/statsrpk/RpkUsageStats;->access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/statsrpk/RpkUxipConfig;->parseAppInfo(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/statsrpk/RpkInfo;)V

    .line 126
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$200(Lcom/meizu/statsrpk/RpkUsageStats;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v2}, Lcom/meizu/statsrpk/RpkUsageStats;->access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/statsrpk/RpkUxipConfig;->parseConfig(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/statsrpk/RpkInfo;)V
    :try_end_12c
    .catch Lorg/json/JSONException; {:try_start_10e .. :try_end_12c} :catch_12d

    goto :goto_139

    :catch_12d
    move-exception v0

    .line 128
    invoke-static {}, Lcom/meizu/statsrpk/RpkUsageStats;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_139
    :goto_139
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/statsrpk/RpkInfo;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16a

    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/statsrpk/RpkInfo;->apkPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16a

    .line 134
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    new-instance v1, Lcom/meizu/statsrpk/RpkInstanceImpl;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$200(Lcom/meizu/statsrpk/RpkUsageStats;)Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/meizu/statsrpk/RpkUsageStats$4;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {p0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/meizu/statsrpk/RpkInstanceImpl;-><init>(Landroid/content/Context;Lcom/meizu/statsrpk/RpkInfo;)V

    invoke-static {v0, v1}, Lcom/meizu/statsrpk/RpkUsageStats;->access$002(Lcom/meizu/statsrpk/RpkUsageStats;Lcom/meizu/statsrpk/RpkInstanceImpl;)Lcom/meizu/statsrpk/RpkInstanceImpl;

    goto :goto_173

    .line 136
    :cond_16a
    invoke-static {}, Lcom/meizu/statsrpk/RpkUsageStats;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string v0, "rpkInfo.appKey or rpkInfo.apkPkgName is empty，unable to initialize."

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_173
    return-void
.end method
