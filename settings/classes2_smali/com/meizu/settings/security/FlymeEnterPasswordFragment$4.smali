.class Lcom/meizu/settings/security/FlymeEnterPasswordFragment$4;
.super Ljava/lang/Object;
.source "FlymeEnterPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->createChangPasswordType()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$4;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 304
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$4;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$100(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/SystemLockView;->setHideTheNorInput(Z)V

    .line 305
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$4;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$100(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/widget/SystemLockView;->getEnteredPassword()V

    return-void
.end method
