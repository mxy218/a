.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$LocationTile$cnlxD4jGztrpcRYGbQTKRSm3Ng0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$LocationTile$cnlxD4jGztrpcRYGbQTKRSm3Ng0;->f$0:Lcom/android/systemui/qs/tiles/LocationTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$LocationTile$cnlxD4jGztrpcRYGbQTKRSm3Ng0;->f$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->lambda$handleClick$0$LocationTile()V

    return-void
.end method