.class Lcom/android/server/policy/FlymeConfirmPasswordView$1;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/FlymeConfirmPasswordView;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 104
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$1;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"  # Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$1;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$000(Lcom/android/server/policy/FlymeConfirmPasswordView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    return-void
.end method
