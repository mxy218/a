.class final Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier$1;
.super Ljava/lang/Object;
.source "BypassHeadsUpNotifier.kt"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/tuner/TunerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "onTuningChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier$1;->this$0:Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier$1;->this$0:Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;

    .line 66
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->access$getContext$p(Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 69
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    const/4 v0, 0x0

    const-string/jumbo v1, "show_media_when_bypassing"

    .line 65
    invoke-static {p1, v1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;->access$setEnabled$p(Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;Z)V

    return-void
.end method
