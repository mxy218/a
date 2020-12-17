.class Lflyme/support/v7/app/AppCompatDelegateImplV7$4;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/AppCompatDelegateImplV7;->createSubDecor()Landroid/view/ViewGroup;
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

    .line 494
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$4;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFitSystemWindows(Landroid/graphics/Rect;)V
    .registers 3

    .line 497
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$4;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->access$400(Lflyme/support/v7/app/AppCompatDelegateImplV7;I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
