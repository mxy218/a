.class Lcom/meizu/settings/appclone/AppCloneAdapter$2;
.super Ljava/lang/Object;
.source "AppCloneAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/meizu/settings/appclone/AppCloneAdapter;Landroid/widget/CompoundButton;)V
    .registers 3

    .line 124
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$2;->this$0:Lcom/meizu/settings/appclone/AppCloneAdapter;

    iput-object p2, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$2;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 127
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter$2;->val$buttonView:Landroid/widget/CompoundButton;

    if-eqz p0, :cond_8

    const/4 p1, 0x1

    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_8
    return-void
.end method
