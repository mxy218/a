.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$fMf3Tdb9veQ9DG26bABcK78yOSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$fMf3Tdb9veQ9DG26bABcK78yOSM;->f$0:Lcom/android/systemui/qs/tiles/DndTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$fMf3Tdb9veQ9DG26bABcK78yOSM;->f$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->lambda$showDetail$1$DndTile()V

    return-void
.end method
