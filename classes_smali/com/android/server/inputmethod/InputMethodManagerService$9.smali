.class Lcom/android/server/inputmethod/InputMethodManagerService$9;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5844
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$9;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 5847
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1, "displayId"  # I

    .line 5855
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$9;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4500(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 5856
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_2a

    .line 5857
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 5858
    .local v1, "rotation":I
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$9;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4600(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v2

    if-eq v2, v1, :cond_2a

    .line 5859
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$9;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4602(Lcom/android/server/inputmethod/InputMethodManagerService;I)I

    .line 5860
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$9;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4700(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->checkIsQuickReply(Landroid/app/ActivityManager;)Z

    move-result v2

    .line 5861
    .local v2, "isQuickReply":Z
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$9;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4800(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z

    .line 5864
    .end local v1  # "rotation":I
    .end local v2  # "isQuickReply":Z
    :cond_2a
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 5851
    return-void
.end method
