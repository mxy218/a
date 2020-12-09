.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TokenInfo"
.end annotation


# instance fields
.field final mDisplayId:I

.field final mToken:Landroid/os/Binder;


# direct methods
.method constructor <init>(Landroid/os/Binder;I)V
    .registers 3

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    .line 712
    iput p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    .line 713
    return-void
.end method
