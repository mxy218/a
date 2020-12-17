.class public final Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFileResourceEntry"
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mItalic:Z

.field private mResourceId:I

.field private mTtcIndex:I

.field private mVariationSettings:Ljava/lang/String;

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    .line 113
    iput p2, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    .line 114
    iput-boolean p3, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    .line 115
    iput-object p4, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    .line 116
    iput p5, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    .line 117
    iput p6, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 121
    iget-object p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()I
    .registers 1

    .line 141
    iget p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    return p0
.end method

.method public getTtcIndex()I
    .registers 1

    .line 137
    iget p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    return p0
.end method

.method public getVariationSettings()Ljava/lang/String;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 133
    iget-object p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    return-object p0
.end method

.method public getWeight()I
    .registers 1

    .line 125
    iget p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    return p0
.end method

.method public isItalic()Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    return p0
.end method
