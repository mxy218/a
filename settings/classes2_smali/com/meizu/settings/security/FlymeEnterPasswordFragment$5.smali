.class Lcom/meizu/settings/security/FlymeEnterPasswordFragment$5;
.super Ljava/lang/Object;
.source "FlymeEnterPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->onTextViewCLickListener()Landroid/view/View$OnClickListener;
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

    .line 312
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$5;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a077b

    if-ne p1, v0, :cond_13

    .line 316
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$5;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$300(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_18

    .line 318
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$5;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$400(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V

    :goto_18
    return-void
.end method
