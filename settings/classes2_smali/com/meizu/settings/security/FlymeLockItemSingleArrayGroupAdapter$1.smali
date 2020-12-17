.class Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$1;
.super Ljava/lang/Object;
.source "FlymeLockItemSingleArrayGroupAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->createAssociateAccountCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$1;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 228
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$1;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->access$000(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;->onAssociateFlymeAccountClick(Z)V

    return-void
.end method
