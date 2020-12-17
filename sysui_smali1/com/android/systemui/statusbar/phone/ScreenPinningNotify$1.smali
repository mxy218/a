.class Lcom/android/systemui/statusbar/phone/ScreenPinningNotify$1;
.super Ljava/lang/Object;
.source "ScreenPinningNotify.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify$1;->this$0:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationModeChanged(I)V
    .registers 2

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify$1;->this$0:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->access$002(Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;I)I

    return-void
.end method
