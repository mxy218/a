.class Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$1;
.super Ljava/lang/Object;
.source "MzDonotDisturbScheduleList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

.field final synthetic val$actionMode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;Landroid/view/ActionMode;)V
    .registers 3

    .line 513
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$1;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iput-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 516
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
