.class Lcom/android/systemui/pip/tv/PipControlButtonView$1;
.super Ljava/lang/Object;
.source "PipControlButtonView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipControlButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlButtonView;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_8

    .line 52
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->startFocusGainAnimation()V

    goto :goto_d

    .line 54
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->startFocusLossAnimation()V

    .line 57
    :goto_d
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->access$000(Lcom/android/systemui/pip/tv/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 58
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->access$000(Lcom/android/systemui/pip/tv/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;->this$0:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-interface {p1, p0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_20
    return-void
.end method
