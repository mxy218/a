.class final Landroidx/core/view/ViewCompat$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .registers 2

    .line 2437
    iput-object p1, p0, Landroidx/core/view/ViewCompat$1;->val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 2440
    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat;->wrap(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    .line 2441
    iget-object p0, p0, Landroidx/core/view/ViewCompat$1;->val$listener:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-interface {p0, p1, p2}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    .line 2442
    invoke-static {p0}, Landroidx/core/view/WindowInsetsCompat;->unwrap(Landroidx/core/view/WindowInsetsCompat;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
