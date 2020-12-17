.class Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$2;
.super Ljava/lang/Object;
.source "FlymeLockItemSingleArrayGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->createAssociateAccountSwitchListener(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

.field final synthetic val$holder:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;)V
    .registers 3

    .line 234
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$2;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$2;->val$holder:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 238
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$2;->val$holder:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->associateAccountSwitch:Lcom/meizu/common/widget/Switch;

    .line 239
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/Switch;->setCheckedWithHapticFeedback(Z)V

    return-void
.end method
