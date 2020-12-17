.class public Lcom/meizu/settings/widget/LockDigitView$CellInfo;
.super Ljava/lang/Object;
.source "LockDigitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/LockDigitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellInfo"
.end annotation


# instance fields
.field final enabled:Z

.field final icon:Landroid/graphics/drawable/Drawable;

.field final label:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .registers 4

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView$CellInfo;->label:Ljava/lang/String;

    .line 694
    iput-object p2, p0, Lcom/meizu/settings/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 695
    iput-boolean p3, p0, Lcom/meizu/settings/widget/LockDigitView$CellInfo;->enabled:Z

    return-void
.end method
