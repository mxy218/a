.class Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$3;
.super Ljava/lang/Object;
.source "MzAppsPickActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;Landroid/view/ActionMode;)V
    .registers 3

    .line 624
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$3;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iput-object p2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$3;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 627
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$3;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 628
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$3;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
