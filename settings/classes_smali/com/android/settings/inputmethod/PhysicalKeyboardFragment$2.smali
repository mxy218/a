.class Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;
.super Landroid/database/ContentObserver;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V
    .registers 3

    .line 218
    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->access$100(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    return-void
.end method
