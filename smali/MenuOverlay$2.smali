.class Lcom/rocket/overlay/MenuOverlay$2;
.super Ljava/lang/Object;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field final synthetic this$0:Lcom/rocket/overlay/MenuOverlay;

.method constructor <init>(Lcom/rocket/overlay/MenuOverlay;)V
    .locals 0
    iput-object p1, p0, Lcom/rocket/overlay/MenuOverlay$2;->this$0:Lcom/rocket/overlay/MenuOverlay;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    iget-object v0, p0, Lcom/rocket/overlay/MenuOverlay$2;->this$0:Lcom/rocket/overlay/MenuOverlay;
    invoke-static {v0}, Lcom/rocket/overlay/MenuOverlay;->access$000(Lcom/rocket/overlay/MenuOverlay;)Landroid/widget/TextView;
    move-result-object v1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "\u0440\u0430\u0434\u0438\u0443\u0441 \u043a\u0440\u0443\u0436\u043a\u0430 \u0410\u0438\u043c \u0411\u043e\u0442\u0430: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "aim_radius="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/rocket/overlay/NativeBridge;->send(Ljava/lang/String;)V
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    return-void
.end method
