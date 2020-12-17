.class Lcom/meizu/settings/appclone/AppCloneAdapter$1;
.super Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;
.source "AppCloneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/appclone/AppCloneAdapter;->showDisableDialog(Landroid/widget/CompoundButton;Lcom/meizu/settings/appclone/AppCloneAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;

.field final synthetic val$info:Lcom/meizu/settings/appclone/AppCloneAppInfo;


# direct methods
.method constructor <init>(Lcom/meizu/settings/appclone/AppCloneAdapter;Lcom/meizu/settings/appclone/AppCloneAppInfo;Landroid/widget/CompoundButton;)V
    .registers 4

    .line 116
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$1;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    iput-object p2, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$1;->val$info:Lcom/meizu/settings/appclone/AppCloneAppInfo;

    iput-object p3, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$1;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 119
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/appclone/AppCloneAlertHelper$MyPostiveListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 120
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$1;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneAdapter;->access$100(Lcom/meizu/settings/appclone/AppCloneAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneState;

    move-result-object v0

    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$1;->val$info:Lcom/meizu/settings/appclone/AppCloneAppInfo;

    invoke-virtual {p1}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$1;->val$buttonView:Landroid/widget/CompoundButton;

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    move v3, p0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/appclone/AppCloneState;->setAppCloneEnabled(ZLjava/lang/String;ZZI)Z

    return-void
.end method
