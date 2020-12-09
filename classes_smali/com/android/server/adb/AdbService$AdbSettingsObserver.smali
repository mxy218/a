.class Lcom/android/server/adb/AdbService$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbService;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 165
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 170
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p1}, Lcom/android/server/adb/AdbService;->access$400(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "adb_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_11

    move v0, v1

    .line 172
    :cond_11
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p1}, Lcom/android/server/adb/AdbService;->access$600(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbService$AdbHandler;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/adb/AdbService$AdbHandler;->sendMessage(IZ)V

    .line 173
    return-void
.end method
