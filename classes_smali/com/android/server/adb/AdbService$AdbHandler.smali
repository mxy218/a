.class final Lcom/android/server/adb/AdbService$AdbHandler;
.super Landroid/os/Handler;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdbHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbService;Landroid/os/Looper;)V
    .registers 6

    .line 112
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbHandler;->this$0:Lcom/android/server/adb/AdbService;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    :try_start_5
    const-string/jumbo p2, "persist.sys.usb.config"

    const-string v0, ""

    .line 120
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "adb"

    .line 119
    invoke-direct {p0, p2, v0}, Lcom/android/server/adb/AdbService$AdbHandler;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/adb/AdbService;->access$202(Lcom/android/server/adb/AdbService;Z)Z

    .line 124
    invoke-static {p1}, Lcom/android/server/adb/AdbService;->access$400(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "adb_enabled"

    .line 125
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/adb/AdbService$AdbSettingsObserver;

    invoke-direct {v2, p1}, Lcom/android/server/adb/AdbService$AdbSettingsObserver;-><init>(Lcom/android/server/adb/AdbService;)V

    .line 124
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    .line 129
    goto :goto_33

    .line 127
    :catch_2b
    move-exception p1

    .line 128
    const-string p2, "AdbService"

    const-string v0, "Error initializing AdbHandler"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_33
    return-void
.end method

.method private containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 134
    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    .line 135
    :cond_8
    const/16 v2, 0x2c

    if-lez v0, :cond_15

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_15

    return v1

    .line 136
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v0, p2, :cond_27

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_27

    return v1

    .line 138
    :cond_27
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    goto :goto_2d

    .line 155
    :cond_9
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbHandler;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p1}, Lcom/android/server/adb/AdbService;->access$300(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 156
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbHandler;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p1}, Lcom/android/server/adb/AdbService;->access$300(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbHandler;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$200(Lcom/android/server/adb/AdbService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(Z)V

    goto :goto_2d

    .line 152
    :cond_21
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbHandler;->this$0:Lcom/android/server/adb/AdbService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    invoke-static {v0, v1}, Lcom/android/server/adb/AdbService;->access$500(Lcom/android/server/adb/AdbService;Z)V

    .line 153
    nop

    .line 160
    :cond_2d
    :goto_2d
    return-void
.end method

.method public sendMessage(IZ)V
    .registers 3

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbService$AdbHandler;->removeMessages(I)V

    .line 143
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 144
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbService$AdbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method
