.class public final Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;
.super Ljava/lang/Object;
.source "KeyguardBypassController.kt"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBypassController;-><init>(Landroid/content/Context;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0007"
    }
    d2 = {
        "com/android/systemui/statusbar/phone/KeyguardBypassController$2",
        "Lcom/android/systemui/tuner/TunerService$Tunable;",
        "onTuningChanged",
        "",
        "key",
        "",
        "newValue",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $dismissByDefault:I

.field final synthetic $tunerService:Lcom/android/systemui/tuner/TunerService;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/tuner/TunerService;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/tuner/TunerService;",
            "I)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;->$tunerService:Lcom/android/systemui/tuner/TunerService;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;->$dismissByDefault:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 91
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;->$tunerService:Lcom/android/systemui/tuner/TunerService;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;->$dismissByDefault:I

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->access$setBypassEnabled$p(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Z)V

    return-void
.end method
