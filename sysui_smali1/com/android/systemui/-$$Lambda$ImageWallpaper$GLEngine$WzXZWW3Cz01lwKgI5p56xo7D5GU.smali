.class public final synthetic Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$WzXZWW3Cz01lwKgI5p56xo7D5GU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$WzXZWW3Cz01lwKgI5p56xo7D5GU;->f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$WzXZWW3Cz01lwKgI5p56xo7D5GU;->f$0:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$renderFromMask$6$ImageWallpaper$GLEngine()V

    return-void
.end method
