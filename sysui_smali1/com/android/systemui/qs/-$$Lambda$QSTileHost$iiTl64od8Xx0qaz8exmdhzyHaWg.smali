.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSTileHost$iiTl64od8Xx0qaz8exmdhzyHaWg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$iiTl64od8Xx0qaz8exmdhzyHaWg;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$iiTl64od8Xx0qaz8exmdhzyHaWg;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->lambda$addTile$5(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method
