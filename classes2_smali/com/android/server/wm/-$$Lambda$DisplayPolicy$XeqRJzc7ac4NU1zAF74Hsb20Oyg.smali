.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayPolicy$XeqRJzc7ac4NU1zAF74Hsb20Oyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$XeqRJzc7ac4NU1zAF74Hsb20Oyg;->f$0:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$XeqRJzc7ac4NU1zAF74Hsb20Oyg;->f$0:Lcom/android/server/wm/DisplayPolicy;

    check-cast p1, Lcom/android/server/wm/DisplayFrames;

    check-cast p2, Lcom/android/server/wm/WindowState;

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->lambda$prepareAddWindowLw$5$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    return-void
.end method
