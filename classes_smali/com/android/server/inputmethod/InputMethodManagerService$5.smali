.class Lcom/android/server/inputmethod/InputMethodManagerService$5;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodMenu(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field final synthetic val$adapter:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .registers 3

    .line 4242
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->val$adapter:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 4245
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 4246
    :try_start_5
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1900(Lcom/android/server/inputmethod/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1900(Lcom/android/server/inputmethod/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    array-length v0, v0

    if-le v0, p2, :cond_5c

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2000(Lcom/android/server/inputmethod/InputMethodManagerService;)[I

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4247
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2000(Lcom/android/server/inputmethod/InputMethodManagerService;)[I

    move-result-object v0

    array-length v0, v0

    if-gt v0, p2, :cond_28

    goto :goto_5c

    .line 4250
    :cond_28
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1900(Lcom/android/server/inputmethod/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    aget-object v0, v0, p2

    .line 4251
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2000(Lcom/android/server/inputmethod/InputMethodManagerService;)[I

    move-result-object v1

    aget v1, v1, p2

    .line 4252
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->val$adapter:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    iput p2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 4253
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->val$adapter:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    .line 4254
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenu()V

    .line 4255
    if-eqz v0, :cond_5a

    .line 4256
    if-ltz v1, :cond_50

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p2

    if-lt v1, p2, :cond_51

    .line 4257
    :cond_50
    const/4 v1, -0x1

    .line 4259
    :cond_51
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 4261
    :cond_5a
    monitor-exit p1

    .line 4262
    return-void

    .line 4248
    :cond_5c
    :goto_5c
    monitor-exit p1

    return-void

    .line 4261
    :catchall_5e
    move-exception p2

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_5e

    throw p2
.end method
