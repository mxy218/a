.class Lcom/android/server/inputmethod/InputMethodManagerService$8;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


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
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 5836
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$8;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"  # Z

    .line 5839
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$8;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4400(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4302(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z

    .line 5840
    return-void
.end method
