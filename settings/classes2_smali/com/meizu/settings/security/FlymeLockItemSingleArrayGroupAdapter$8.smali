.class Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$8;
.super Ljava/lang/Object;
.source "FlymeLockItemSingleArrayGroupAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->showClonedAppTipsDialog(Landroid/widget/CheckBox;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Landroid/widget/CheckBox;)V
    .registers 3

    .line 348
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$8;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 350
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$8;->val$checkBox:Landroid/widget/CheckBox;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
