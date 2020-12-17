.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->doScrollBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .registers 2

    .line 531
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 535
    new-instance p0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x7a

    const/4 v7, 0x0

    const/16 v8, 0x1000

    move-object v0, p0

    move-wide v1, v9

    move-wide v3, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 537
    new-instance v11, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    move-object v0, v11

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 539
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 541
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    invoke-virtual {p0, v11, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method
