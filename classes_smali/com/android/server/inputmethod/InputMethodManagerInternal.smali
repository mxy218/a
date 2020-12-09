.class public abstract Lcom/android/server/inputmethod/InputMethodManagerInternal;
.super Ljava/lang/Object;
.source "InputMethodManagerInternal.java"


# static fields
.field private static final NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerInternal$1;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal$1;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;->NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/inputmethod/InputMethodManagerInternal;
    .registers 1

    .line 88
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 89
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 90
    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;->NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    :goto_d
    return-object v0
.end method


# virtual methods
.method public abstract getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputMethodListAsUser(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hideCurrentInputMethod()V
.end method

.method public abstract setInteractive(Z)V
.end method
