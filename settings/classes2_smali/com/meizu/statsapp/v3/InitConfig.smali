.class public Lcom/meizu/statsapp/v3/InitConfig;
.super Ljava/lang/Object;
.source "InitConfig.java"


# static fields
.field public static mainThreadInit:Z = false

.field public static noBootUp:Z = false

.field public static noEncrypt:Z = false

.field public static offline:Z = true

.field public static replacePackage:Ljava/lang/String; = ""

.field public static reportLocation:Z = true

.field public static sendEventSync:Z = false

.field public static useInternationalDomain:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOffline(Z)Lcom/meizu/statsapp/v3/InitConfig;
    .registers 2

    .line 54
    sput-boolean p1, Lcom/meizu/statsapp/v3/InitConfig;->offline:Z

    return-object p0
.end method

.method public setReportLocation(Z)Lcom/meizu/statsapp/v3/InitConfig;
    .registers 2

    .line 34
    sput-boolean p1, Lcom/meizu/statsapp/v3/InitConfig;->reportLocation:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "reportLocation"

    .line 128
    sget-boolean v1, Lcom/meizu/statsapp/v3/InitConfig;->reportLocation:Z

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "noBootUp"

    .line 129
    sget-boolean v1, Lcom/meizu/statsapp/v3/InitConfig;->noBootUp:Z

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "offline"

    .line 130
    sget-boolean v1, Lcom/meizu/statsapp/v3/InitConfig;->offline:Z

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "mainThreadInit"

    .line 131
    sget-boolean v1, Lcom/meizu/statsapp/v3/InitConfig;->mainThreadInit:Z

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "noEncrypt"

    .line 132
    sget-boolean v1, Lcom/meizu/statsapp/v3/InitConfig;->noEncrypt:Z

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "replacePackage"

    .line 133
    sget-object v1, Lcom/meizu/statsapp/v3/InitConfig;->replacePackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "useInternationalDomain"

    .line 134
    sget-boolean v1, Lcom/meizu/statsapp/v3/InitConfig;->useInternationalDomain:Z

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "sendEventSync"

    .line 135
    sget-boolean v1, Lcom/meizu/statsapp/v3/InitConfig;->sendEventSync:Z

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v0

    .line 137
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    :goto_42
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
