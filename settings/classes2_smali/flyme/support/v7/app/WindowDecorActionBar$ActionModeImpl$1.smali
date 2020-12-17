.class Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl$1;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lflyme/support/v7/view/ActionMode$BackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;)V
    .registers 2

    .line 1197
    iput-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl$1;->this$1:Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
