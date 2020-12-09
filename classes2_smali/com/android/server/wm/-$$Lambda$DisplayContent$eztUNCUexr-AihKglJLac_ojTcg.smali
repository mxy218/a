.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field private final synthetic f$1:Landroid/graphics/Region;

.field private final synthetic f$2:Landroid/graphics/Region;

.field private final synthetic f$3:Landroid/graphics/Region;

.field private final synthetic f$4:[I

.field private final synthetic f$5:Landroid/graphics/Region;

.field private final synthetic f$6:Landroid/graphics/Rect;

.field private final synthetic f$7:Landroid/graphics/Rect;

.field private final synthetic f$8:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$1:Landroid/graphics/Region;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$2:Landroid/graphics/Region;

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$3:Landroid/graphics/Region;

    iput-object p5, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$4:[I

    iput-object p6, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$5:Landroid/graphics/Region;

    iput-object p7, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$6:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$7:Landroid/graphics/Rect;

    iput-object p9, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$8:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$1:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$2:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$3:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$4:[I

    iget-object v5, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$5:Landroid/graphics/Region;

    iget-object v6, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$6:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$7:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$eztUNCUexr-AihKglJLac_ojTcg;->f$8:Landroid/graphics/Region;

    move-object v9, p1

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/DisplayContent;->lambda$calculateSystemGestureExclusion$27$DisplayContent(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
