.class Lcom/android/settings/panel/PanelFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/panel/PanelFragment;->updatePanelWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/panel/PanelFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/panel/PanelFragment;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment$2;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$2;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {p0}, Lcom/android/settings/panel/PanelFragment;->access$200(Lcom/android/settings/panel/PanelFragment;)V

    return-void
.end method
