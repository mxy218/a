.class Lcom/android/server/policy/MzPhoneWindowManager$3;
.super Ljava/lang/Object;
.source "MzPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MzPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MzPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/MzPhoneWindowManager;

    .line 494
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$3;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 497
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$3;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->access$800(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 499
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$3;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->access$900(Lcom/android/server/policy/MzPhoneWindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/policy/OfflineUsageStats;->collectVolumeAcceptCall(Landroid/content/Context;)V

    .line 501
    invoke-static {}, Lcom/android/server/policy/MzPhoneWindowManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "interceptVolumeKeyForTelephony volume up long press!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$3;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->access$1102(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z

    .line 503
    return-void
.end method
