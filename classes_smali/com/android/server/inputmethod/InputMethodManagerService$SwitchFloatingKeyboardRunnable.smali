.class Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchFloatingKeyboardRunnable"
.end annotation


# instance fields
.field private mFloatingKeyboard:Z

.field private mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(ZLcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 3
    .param p1, "floatingKeyboard"  # Z
    .param p2, "service"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5676
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;->mFloatingKeyboard:Z

    .line 5677
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5678
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 5686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitchFloatingKeyboardRunnable floatingKeyboard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;->mFloatingKeyboard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;->mFloatingKeyboard:Z

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4200(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    .line 5688
    return-void
.end method

.method setUseFloangtingKeyboard(Z)V
    .registers 2
    .param p1, "floatingKeyboard"  # Z

    .line 5681
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;->mFloatingKeyboard:Z

    .line 5682
    return-void
.end method
