.class Lflyme/support/v7/app/AppCompatDelegateImplV7$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuBuilder$Callback;


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

    .line 156
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$2;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 160
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$2;->this$0:Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->access$300(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMenuModeChange(Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method
