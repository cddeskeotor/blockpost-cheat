.class public Lcom/rocket/overlay/MenuOverlay;
.super Ljava/lang/Object;

.field private ctx:Landroid/content/Context;
.field private wm:Landroid/view/WindowManager;
.field private view:Landroid/view/View;
.field private params:Landroid/view/WindowManager$LayoutParams;
.field private root:Landroid/widget/LinearLayout;
.field private switchAim:Landroid/widget/Switch;
.field private seekRadius:Landroid/widget/SeekBar;
.field private labelRadius:Landroid/widget/TextView;

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/rocket/overlay/MenuOverlay;->ctx:Landroid/content/Context;
    const-string v0, "window"
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowManager;
    iput-object v0, p0, Lcom/rocket/overlay/MenuOverlay;->wm:Landroid/view/WindowManager;
    invoke-direct {p0}, Lcom/rocket/overlay/MenuOverlay;->buildUI()V
    return-void
.end method

.method private buildUI()V
    .locals 6
    new-instance v0, Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/rocket/overlay/MenuOverlay;->ctx:Landroid/content/Context;
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/rocket/overlay/MenuOverlay;->root:Landroid/widget/LinearLayout;
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const-string v1, "#111111"
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    const/16 v1, 0x10
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;
    iget-object v2, p0, Lcom/rocket/overlay/MenuOverlay;->ctx:Landroid/content/Context;
    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v2, "Aim bot option"
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v2, "#FFFFFF"
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v2, 0x41b00000
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/Switch;
    iget-object v2, p0, Lcom/rocket/overlay/MenuOverlay;->ctx:Landroid/content/Context;
    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/rocket/overlay/MenuOverlay;->switchAim:Landroid/widget/Switch;
    const-string v2, "ON/OFF"
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V
    const-string v2, "#FFFFFF"
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v2
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextColor(I)V
    new-instance v2, Lcom/rocket/overlay/MenuOverlay$1;
    invoke-direct {v2, p0}, Lcom/rocket/overlay/MenuOverlay$1;-><init>(Lcom/rocket/overlay/MenuOverlay;)V
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;
    iget-object v2, p0, Lcom/rocket/overlay/MenuOverlay;->ctx:Landroid/content/Context;
    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/rocket/overlay/MenuOverlay;->labelRadius:Landroid/widget/TextView;
    const-string v2, "\u0440\u0430\u0434\u0438\u0443\u0441 \u043a\u0440\u0443\u0436\u043a\u0430 \u0410\u0438\u043c \u0411\u043e\u0442\u0430: 150"
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string v2, "#AAAAAA"
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/rocket/overlay/MenuOverlay;->ctx:Landroid/content/Context;
    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/rocket/overlay/MenuOverlay;->seekRadius:Landroid/widget/SeekBar;
    const/16 v2, 0x1f4
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V
    const/16 v2, 0x96
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V
    new-instance v2, Lcom/rocket/overlay/MenuOverlay$2;
    invoke-direct {v2, p0}, Lcom/rocket/overlay/MenuOverlay$2;-><init>(Lcom/rocket/overlay/MenuOverlay;)V
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7f6
    const/16 v3, 0x4
    const/4 v4, -0x2
    const/4 v5, -0x2
    invoke-direct/range {v1 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIII)V
    iput-object v1, p0, Lcom/rocket/overlay/MenuOverlay;->params:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x33
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I
    const/16 v2, 0x64
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I
    const/16 v2, 0xc8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I
    return-void
.end method

.method public show()V
    .locals 3
    iget-object v0, p0, Lcom/rocket/overlay/MenuOverlay;->wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/rocket/overlay/MenuOverlay;->root:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/rocket/overlay/MenuOverlay;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public hide()V
    .locals 2
    iget-object v0, p0, Lcom/rocket/overlay/MenuOverlay;->wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/rocket/overlay/MenuOverlay;->root:Landroid/widget/LinearLayout;
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    return-void
.end method

.method public static access$000(Lcom/rocket/overlay/MenuOverlay;)Landroid/widget/TextView;
    .locals 1
    iget-object v0, p0, Lcom/rocket/overlay/MenuOverlay;->labelRadius:Landroid/widget/TextView;
    return-object v0
.end method
