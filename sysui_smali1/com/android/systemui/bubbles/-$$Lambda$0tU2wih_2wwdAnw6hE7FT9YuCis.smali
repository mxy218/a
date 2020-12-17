.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
