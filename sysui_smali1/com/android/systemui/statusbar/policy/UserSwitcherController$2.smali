.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;
.super Landroid/telephony/PhoneStateListener;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCallState:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 2

    .line 462
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3

    .line 467
    iget p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->mCallState:I

    if-ne p2, p1, :cond_5

    return-void

    .line 469
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->mCallState:I

    .line 470
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 p1, -0x2710

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    return-void
.end method
