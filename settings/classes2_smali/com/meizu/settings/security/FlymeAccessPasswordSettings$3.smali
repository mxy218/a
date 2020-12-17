.class Lcom/meizu/settings/security/FlymeAccessPasswordSettings$3;
.super Ljava/lang/Object;
.source "FlymeAccessPasswordSettings.java"

# interfaces
.implements Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->createOnPartOneClickListener()Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$3;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociateFlymeAccountClick(Z)V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$3;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$3;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->handleAssociateAccountClick(Landroid/app/Fragment;IZ)V

    return-void
.end method

.method public onModifyPasswordClick()V
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$3;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->access$200(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;I)V

    return-void
.end method

.method public onSwitchLayoutClick()V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$3;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->access$100(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAppLockEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 201
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$3;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    invoke-static {p0, v1}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->access$200(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;I)V

    goto :goto_18

    .line 203
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$3;->this$0:Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    invoke-static {p0, v1}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->access$300(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;Z)V

    :goto_18
    return-void
.end method
