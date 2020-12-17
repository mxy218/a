.class Lflyme/support/v7/app/AppCompatDelegateImplV7$8;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V
    .registers 2

    .line 2324
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$8;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 2327
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$8;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_13

    .line 2328
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$8;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    invoke-interface {p0}, Lflyme/support/v7/app/AppCompatCallback;->onBackTopTouch()V

    :cond_13
    return-void
.end method
