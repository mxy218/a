.class final Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/MultipathPolicyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/os/Handler;)V
    .registers 3

    .line 516
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 517
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 518
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 522
    invoke-static {}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Should never be reached."

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 527
    const-string/jumbo p1, "network_default_daily_multipath_quota_bytes"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 528
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 529
    invoke-static {}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected settings observation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_25
    iget-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1200(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    .line 533
    return-void
.end method