.class Lcom/android/server/inputmethod/InputMethodManagerService$3;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;-><init>(Landroid/content/Context;)V
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

    .line 1548
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShouldUseGameKeyboardChanged(Z)V
    .registers 3
    .param p1, "useGameKeyboard"  # Z

    .line 1551
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1200(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z

    .line 1552
    return-void
.end method
