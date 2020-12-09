.class final Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityViewInfo"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V
    .registers 3

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 458
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->mMatrix:Landroid/graphics/Matrix;

    .line 459
    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .registers 1

    .line 445
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->mParentClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;
    .registers 1

    .line 445
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method
