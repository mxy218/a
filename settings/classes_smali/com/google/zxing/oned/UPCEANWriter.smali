.class public abstract Lcom/google/zxing/oned/UPCEANWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "UPCEANWriter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultMargin()I
    .registers 1

    .line 31
    sget-object p0, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length p0, p0

    return p0
.end method
