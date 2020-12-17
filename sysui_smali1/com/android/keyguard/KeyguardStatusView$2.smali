.class Lcom/android/keyguard/KeyguardStatusView$2;
.super Ljava/lang/Object;
.source "KeyguardStatusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardStatusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusView;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$800(Lcom/android/keyguard/KeyguardStatusView;)Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardStatusView;->access$600(Lcom/android/keyguard/KeyguardStatusView;)I

    move-result v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$2;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusView;->access$700(Lcom/android/keyguard/KeyguardStatusView;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setFilterColor(IZ)V

    return-void
.end method
