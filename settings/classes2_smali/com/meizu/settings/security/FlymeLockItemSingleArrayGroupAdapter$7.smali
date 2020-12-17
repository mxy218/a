.class Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$7;
.super Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;
.source "FlymeLockItemSingleArrayGroupAdapter.java"


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

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Ljava/lang/String;)V
    .registers 3

    .line 342
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$7;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$7;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 344
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 345
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$7;->this$0:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->access$200(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Lmeizu/security/AccessControlManager;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$7;->val$pkg:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmeizu/security/AccessControlManager;->addPackageName(Ljava/lang/String;)Z

    return-void
.end method
