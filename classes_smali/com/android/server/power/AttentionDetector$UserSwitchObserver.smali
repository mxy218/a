.class final Lcom/android/server/power/AttentionDetector$UserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "AttentionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/AttentionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/AttentionDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/power/AttentionDetector;)V
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/AttentionDetector;Lcom/android/server/power/AttentionDetector$1;)V
    .registers 3

    .line 345
    invoke-direct {p0, p1}, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;-><init>(Lcom/android/server/power/AttentionDetector;)V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    iget-object p1, p0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p1}, Lcom/android/server/power/AttentionDetector;->access$600(Lcom/android/server/power/AttentionDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    .line 349
    return-void
.end method
