.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setFilterColor(IZ)V

    return-void
.end method
