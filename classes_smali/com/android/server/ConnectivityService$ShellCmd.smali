.class Lcom/android/server/ConnectivityService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .line 7239
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .registers 3

    .line 7239
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ShellCmd;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7

    .line 7243
    if-nez p1, :cond_7

    .line 7244
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 7246
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 7248
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x8a07f3e

    const/4 v4, 0x0

    if-eq v2, v3, :cond_17

    :cond_16
    goto :goto_21

    :cond_17
    const-string v2, "airplane-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v4

    goto :goto_22

    :goto_21
    move v2, v1

    :goto_22
    if-eqz v2, :cond_29

    .line 7268
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 7250
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 7251
    const-string v2, "enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 7252
    iget-object p1, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 7253
    return v4

    .line 7254
    :cond_3c
    const-string v2, "disable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 7255
    iget-object p1, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {p1, v4}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 7256
    return v4

    .line 7257
    :cond_4a
    if-nez p1, :cond_67

    .line 7258
    iget-object p1, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 7259
    const-string v2, "airplane_mode_on"

    invoke-static {p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 7261
    if-nez p1, :cond_61

    const-string p1, "disabled"

    goto :goto_63

    :cond_61
    const-string p1, "enabled"

    :goto_63
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7262
    return v4

    .line 7264
    :cond_67
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->onHelp()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6a} :catch_6b

    .line 7265
    return v1

    .line 7270
    :catch_6b
    move-exception p1

    .line 7271
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7273
    return v1
.end method

.method public onHelp()V
    .registers 3

    .line 7278
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 7279
    const-string v1, "Connectivity service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7280
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7281
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7282
    const-string v1, "  airplane-mode [enable|disable]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7283
    const-string v1, "    Turn airplane mode on or off."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7284
    const-string v1, "  airplane-mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7285
    const-string v1, "    Get airplane mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7286
    return-void
.end method
