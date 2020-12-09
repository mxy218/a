.class Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;
.super Landroid/database/ContentObserver;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;Landroid/os/Handler;)V
    .registers 3

    .line 292
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received notification that uri "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " was modified; rescheduling keystore job"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdbDebuggingManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 298
    return-void
.end method
