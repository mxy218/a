.class public final synthetic Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ScreenDecorations;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;->f$0:Lcom/android/systemui/ScreenDecorations;

    iput p2, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;->f$0:Lcom/android/systemui/ScreenDecorations;

    iget p0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$0LxH4_gyyT9LgXM946gQ6FsGA7o;->f$1:F

    invoke-virtual {v0, p0}, Lcom/android/systemui/ScreenDecorations;->lambda$onDarkIntensity$6$ScreenDecorations(F)V

    return-void
.end method
