.class Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$4;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 286
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$4;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"  # Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$4;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$400(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 290
    return-void
.end method
